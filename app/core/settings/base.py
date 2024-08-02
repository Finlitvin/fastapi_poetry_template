from pydantic_settings import BaseSettings, SettingsConfigDict


class BaseAppSettings(BaseSettings):
    model_config = SettingsConfigDict(
        case_sensitive=False, validate_assignment=True, env_file=".env"
    )
